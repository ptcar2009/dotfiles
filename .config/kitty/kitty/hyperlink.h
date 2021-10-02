/*
 * Copyright (C) 2020 Kovid Goyal <kovid at kovidgoyal.net>
 *
 * Distributed under terms of the GPL3 license.
 */

#pragma once

#include "screen.h"

HYPERLINK_POOL_HANDLE alloc_hyperlink_pool(void);
void free_hyperlink_pool(HYPERLINK_POOL_HANDLE);
void clear_hyperlink_pool(HYPERLINK_POOL_HANDLE);
hyperlink_id_type get_id_for_hyperlink(Screen*, const char*, const char*);
hyperlink_id_type remap_hyperlink_ids(Screen *self, hyperlink_id_type *map);
PyObject* screen_hyperlinks_as_list(Screen *screen);
void screen_garbage_collect_hyperlink_pool(Screen *screen);
