// SPDX-FileCopyrightText: 2021-present Dustin Mierau
//
// SPDX-License-Identifier: MIT

#include "toyboxes/toyboxes.h"

#include "pd_api.h"

int eventHandler(PlaydateAPI* playdate, PDSystemEvent event, uint32_t arg)
{
    if(event == kEventInitLua) {
        REGISTER_TOYBOXES(playdate);
    }

    return 0;
}
