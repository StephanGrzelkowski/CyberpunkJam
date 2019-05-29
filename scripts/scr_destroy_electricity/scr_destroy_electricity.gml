///

show_debug_message("Destroyed electricity")
global.bol_in_grid = 0
ds_queue_empty(ds_queue_movement)
instance_destroy(self)