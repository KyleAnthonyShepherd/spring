/* This file is part of the Spring engine (GPL v2 or later), see LICENSE.html */

/*
 * Do NOT include this file directly, but include the wrapper instead.
 * This prevents wastefull recompiling.
 */

#ifndef VERSION_GENERATED_H
#define VERSION_GENERATED_H

/// examples: "83.0" "83.0.1-13-g1234567 develop"
static const char* SPRING_VERSION_ENGINE            = "105.1.1-1781-g294097f BAR105";

/// examples: "83"
static const char* SPRING_VERSION_ENGINE_MAJOR      = "105";

/// examples: "0"
static const char* SPRING_VERSION_ENGINE_PATCH_SET  = "1";

/// examples: "13"
static const char* SPRING_VERSION_ENGINE_COMMITS    = "1781";

/// examples: "1234567"
static const char* SPRING_VERSION_ENGINE_HASH       = "294097f";

/// examples: "develop"
static const char* SPRING_VERSION_ENGINE_BRANCH     = "BAR105";

/// examples: "what a splendid day, isn't it?"
static const char* SPRING_VERSION_ENGINE_ADDITIONAL = "";

/// examples: true, false
static bool        SPRING_VERSION_ENGINE_RELEASE    = 0;

#endif // VERSION_GENERATED_H

 
 
 
