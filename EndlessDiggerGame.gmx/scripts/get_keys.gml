///get_keys()
//Reads current key state

//Key Pressed Counter update
p_l = (p_l+1)*k_l
p_r = (p_r+1)*k_r

p_d = (p_d+1)*k_d
p_j = (p_j+1)*k_j

//Key Held Right Now
k_l = keyboard_check(vk_left)
k_r = keyboard_check(vk_right)

k_d = keyboard_check(ord('X'))
k_j = keyboard_check(ord('Z'))
