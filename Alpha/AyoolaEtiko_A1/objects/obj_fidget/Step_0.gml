/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 30B65A13
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 09491084
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 4C10BD6A
var l4C10BD6A_0;
l4C10BD6A_0 = mouse_check_button(mb_left);
if (l4C10BD6A_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1916FCF7
	/// @DnDParent : 4C10BD6A
	/// @DnDArgument : "var" "cooldown"
	if(cooldown == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5819A1F1
		/// @DnDParent : 1916FCF7
		/// @DnDArgument : "var" "cooldown"
		cooldown = 0;
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 30E0BAA8
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown"
cooldown += -1;