// SPDX-FileCopyrightText: 20219-present Dustin Mierau
//
// SPDX-License-Identifier: MIT

#ifndef DUSTINMIERAU_PLAYBOX2D_H
#define DUSTINMIERAU_PLAYBOX2D_H

#include "pd_api.h"

#ifndef PBPositionCorrection
#define PBPositionCorrection 1
#endif

#ifndef PBWarmStarting
#define PBWarmStarting 0
#endif

#ifndef PBAccumulateImpulses
#define PBAccumulateImpulses 1
#endif

extern void register_playbox2d(PlaydateAPI*);

#endif
