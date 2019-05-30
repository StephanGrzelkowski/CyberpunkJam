///

show_debug_message("Destroyed electricity")
obj_controller.alarm[0] = obj_controller.delay_movement_allowed
ds_queue_empty(ds_queue_movement)
instance_destroy(self)