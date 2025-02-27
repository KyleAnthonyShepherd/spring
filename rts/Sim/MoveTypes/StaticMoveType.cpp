/* This file is part of the Spring engine (GPL v2 or later), see LICENSE.html */


#include "StaticMoveType.h"
#include "Components/MoveTypesComponents.h"
#include "Map/Ground.h"
#include "Sim/Ecs/Registry.h"
#include "Sim/Units/Unit.h"
#include "Sim/Units/UnitDef.h"

using namespace MoveTypes;

CR_BIND_DERIVED(CStaticMoveType, AMoveType, (nullptr))
CR_REG_METADATA(CStaticMoveType, (
	CR_PREALLOC(GetPreallocContainer)
))

CStaticMoveType::CStaticMoveType(CUnit* unit) : AMoveType(unit) {
	useWantedSpeed[false] = false;
	useWantedSpeed[ true] = false;
	Sim::registry.emplace_or_replace<GeneralMoveType>(owner->entityReference, owner->id);
}

void CStaticMoveType::SlowUpdate()
{
	// buildings and pseudo-static units can be transported
	if (owner->GetTransporter() != nullptr)
		return;

	// NOTE:
	//   static buildings don't have any MoveDef instance, hence we need
	//   to get the ground height instead of calling CMoveMath::yLevel()
	// FIXME: intercept heightmapUpdate events and update buildings y-pos only on-demand!
	if (owner->FloatOnWater() && owner->IsInWater()) {
		owner->Move(UpVector * (-waterline - owner->pos.y), true);
	} else {
		owner->Move(UpVector * (CGround::GetHeightReal(owner->pos.x, owner->pos.z) - owner->pos.y), true);
	}
}
