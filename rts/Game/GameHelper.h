/* This file is part of the Spring engine (GPL v2 or later), see LICENSE.html */

#ifndef GAME_HELPER_H
#define GAME_HELPER_H

#include "Sim/Misc/DamageArray.h"
#include "Sim/Projectiles/ExplosionListener.h"
#include "Sim/Units/CommandAI/Command.h"
#include "Sim/Misc/GlobalConstants.h"
#include "System/float3.h"
#include "System/float4.h"
#include "System/type2.h"

#include <array>
#include <vector>

class CUnit;
class CWeapon;
class CSolidObject;
class CFeature;
class CMobileCAI;
struct UnitDef;
struct MoveDef;
struct BuildInfo;

struct CExplosionParams {
	const float3 pos;
	const float3 dir;
	const DamageArray& damages;
	const WeaponDef* weaponDef;

	CUnit* owner;
	CUnit* hitUnit;
	CFeature* hitFeature;

	float craterAreaOfEffect;
	float damageAreaOfEffect; // radius
	float edgeEffectiveness;
	float explosionSpeed;
	float gfxMod;

	bool impactOnly;
	bool ignoreOwner;
	bool damageGround;

	unsigned int projectileID;
};

class CGameHelper
{
public:
	enum BuildSquareStatus {
		BUILDSQUARE_BLOCKED     = 0,
		BUILDSQUARE_OCCUPIED    = 1,
		BUILDSQUARE_RECLAIMABLE = 2,
		BUILDSQUARE_OPEN        = 3
	};

	CGameHelper() {}
	CGameHelper(const CGameHelper&) = delete; // no-copy

	static size_t GetEnemyUnits(const float3& pos, float searchRadius, int searchAllyteam, std::vector<int>& found);
	static size_t GetEnemyUnitsNoLosTest(const float3& pos, float searchRadius, int searchAllyteam, std::vector<int>& found);

	static CUnit* GetClosestUnit(const float3& pos, float searchRadius);
	static CUnit* GetClosestEnemyUnit(const CUnit* excludeUnit, const float3& pos, float searchRadius, int searchAllyteam);
	static CUnit* GetClosestValidTarget(const float3& pos, float radius, int searchAllyteam, const CMobileCAI* cai);
	static CUnit* GetClosestEnemyUnitNoLosTest(
		const CUnit* excludeUnit,
		const float3& searchPos,
		float searchRadius,
		int searchAllyteam,
		bool sphereDistTest,
		bool checkSightDist
	);
	static CUnit* GetClosestFriendlyUnit(const CUnit* excludeUnit, const float3& pos, float searchRadius, int searchAllyteam);
	static CUnit* GetClosestEnemyAircraft(const CUnit* excludeUnit, const float3& pos, float searchRadius, int searchAllyteam);

	static void BuggerOff(const float3& pos, float radius, bool spherical, bool forced, int teamId, const CUnit* excludeUnit);
	static void BuggerOff(const float3& pos, float radius, bool spherical, bool forced, int teamId, const CUnit* excludeUnit, const std::vector<const UnitDef*> excludeUnitDefs);
	static float3 Pos2BuildPos(const BuildInfo& buildInfo, bool synced);
	static float4 BuildPosToRect(const float3& midPoint, int facing, int xsize, int zsize);

	static int GetYardMapIndex(int buildFacing,
		const int2& yardPos,
		const int2& xrange,
		const int2& zrange
	);

	///< test whether a blocked map square has a build override
	static bool TestBlockSquareForBuildOnly(
		const CSolidObject *blockingObject,
		const int2 yardpos
	);

	///< test a single mapsquare for build possibility
	static BuildSquareStatus TestBuildSquare(
		const float3& pos,
		const int2& xrange,
		const int2& zrange,
		const BuildInfo& buildInfo,
		const MoveDef* moveDef,
		CFeature*& feature,
		int allyteam,
		bool synced
	);

	///< test if a unit can be built at specified position
	static BuildSquareStatus TestUnitBuildSquare(
		const BuildInfo&,
		CFeature*&,
		int allyteam,
		bool synced,
		std::vector<float3>* canbuildpos = nullptr,
		std::vector<float3>* featurepos = nullptr,
		std::vector<float3>* nobuildpos = nullptr,
		const std::vector<Command>* commands = nullptr,
		int threadOwner = 0
	);
	static inline void InvalidateUnitBuildSquareCache(const BuildInfo& bi, int allyTeamID, bool synced) {
		auto key = TestUnitBuildSquareCache::GetCacheKey(bi, allyTeamID, synced);
		TestUnitBuildSquareCache::Invalidate(key);
	}

	static float GetBuildHeight(const float3& pos, const UnitDef* unitdef, bool synced = true);
	static Command GetBuildCommand(const float3& pos, const float3& dir);

	static bool CheckTerrainConstraints(
		const UnitDef* unitDef,
		const MoveDef* moveDef,
		float wantedHeight,
		float groundHeight,
		float groundSlope,
		float* clampedHeight = nullptr
	);

	/**
	 * @param minDistance measured in 1/BUILD_SQUARE_SIZE = 1/16 of full map resolution.
	 */
	static float3 ClosestBuildPos(
		int team,
		const UnitDef* unitDef,
		const float3& worldPos,
		float searchRadius,
		int minDistance,
		int buildFacing = 0,
		bool synced = false
	);

	static size_t GenerateWeaponTargets(const CWeapon* weapon, const CUnit* avoidUnit, std::vector<std::pair<float, CUnit*>>& targets);

	void Init();
	void Update();

	static float CalcImpulseScale(const DamageArray& damages, const float expDistanceMod);

	void DoExplosionDamage(
		CUnit* unit,
		CUnit* owner,
		const float3& expPos,
		const float expRadius,
		const float expSpeed,
		const float expEdgeEffect,
		const bool ignoreOwner,
		const DamageArray& damages,
		const int weaponDefID,
		const int projectileID
	);
	void DoExplosionDamage(
		CFeature* feature,
		CUnit* owner,
		const float3& expPos,
		const float expRadius,
		const float expEdgeEffect,
		const DamageArray& damages,
		const int weaponDefID,
		const int projectileID
	);

	void DamageObjectsInExplosionRadius(const CExplosionParams& params, const float expRad, const int weaponDefID);
	void Explosion(const CExplosionParams& params);

private:
	struct WaitingDamage {
		WaitingDamage(const DamageArray& _damage, const float3& _impulse, int _attackerID, int _targetID, int _weaponID, int _projectileID)
		: attackerID(_attackerID)
		, targetID(_targetID)
		, weaponID(_weaponID)
		, projectileID(_projectileID)
		, damage(_damage)
		, impulse(_impulse)
		{}

		int attackerID;
		int targetID;
		int weaponID;
		int projectileID;

		DamageArray damage;
		float3 impulse;
	};
	struct TestUnitBuildSquareCache {
		TestUnitBuildSquareCache(
			int createFrame_,
			std::tuple<bool, float3, int, int, const UnitDef*>&& key_,
			CFeature* feature_,
			CGameHelper::BuildSquareStatus result_,
			std::vector<float3> canbuildpos_,
			std::vector<float3> featurepos_,
			std::vector<float3> nobuildpos_)
			: createFrame(createFrame_)
			, key(std::move(key_))
			, feature(feature_)
			, result(result_)
			, canbuildpos(canbuildpos_)
			, featurepos(featurepos_)
			, nobuildpos(nobuildpos_)
		{};
		TestUnitBuildSquareCache(
			int createFrame_,
			std::tuple<bool, float3, int, int, const UnitDef*>&& key_,
			CFeature* feature_,
			CGameHelper::BuildSquareStatus result_)
			: createFrame(createFrame_)
			, key(std::move(key_))
			, feature(feature_)
			, result(result_)
		{};

		static void ClearStaleItems(bool synced);

		using KeyT = std::tuple<bool, float3, int, int, const UnitDef*>;
		static KeyT GetCacheKey(const BuildInfo& buildInfo, int allyTeamID, bool synced);
		static inline std::vector<TestUnitBuildSquareCache>::iterator GetCacheItem(const KeyT& key, bool& found) {
			auto it = std::find_if(testUnitBuildSquareCache.begin(), testUnitBuildSquareCache.end(), [&key](const auto& item) {
				return item.key == key;
			});
			found = (it != testUnitBuildSquareCache.end());
			return it;
		}
		static inline void SaveToCache(int frame, KeyT&& key, CFeature* f, CGameHelper::BuildSquareStatus bss) {
			testUnitBuildSquareCache.emplace_back(
				frame,
				std::move(key),
				f,
				bss
			);
		}
		static inline void SaveToCache(int frame, KeyT&& key, CFeature* f, CGameHelper::BuildSquareStatus bss
			, const std::vector<float3>& canbuildpos
			, const std::vector<float3>& featurepos
			, const std::vector<float3>& nobuildpos) {
			testUnitBuildSquareCache.emplace_back(
				frame,
				std::move(key),
				f,
				bss,
				canbuildpos,
				featurepos,
				nobuildpos
			);
		}
		static void Invalidate(const KeyT& key);

		int createFrame;
		std::tuple<bool, float3, int, int, const UnitDef*> key;
		CFeature* feature;
		CGameHelper::BuildSquareStatus result;
		std::vector<float3> canbuildpos;
		std::vector<float3> featurepos;
		std::vector<float3> nobuildpos;

		/* synced, unsynced. Unsynced is arbitrary, but being 166ms
		 * seems like a good tradeoff between not evicting cache value
		 * too quickly and not to stale the state for too long. */
		static constexpr int CACHE_VALIDITY_PERIOD[] = { 1, GAME_SPEED / 5 };

		inline static std::vector<TestUnitBuildSquareCache> testUnitBuildSquareCache;
	};

	// note: size must be a power of two
	std::array<std::vector<WaitingDamage>, 128> waitingDamages;
public:
	std::vector<int> targetUnitIDs; // GetEnemyUnits{NoLosTest}
	std::vector<std::pair<float, CUnit*>> targetPairs; // GenerateWeaponTargets
};

extern CGameHelper* helper;

#endif // GAME_HELPER_H
