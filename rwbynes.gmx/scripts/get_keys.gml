//Held
p_l = (p_l + 1) * k_l
p_r = (p_r + 1) * k_r
p_u = (p_u + 1) * k_u
p_d = (p_d + 1) * k_d

p_j = (p_j + 1) * k_j
p_ma= (p_ma+ 1) * k_ma
p_sa= (p_sa+ 1) * k_sa
p_da= (p_da+ 1) * k_da

p_pause = (p_pause + 1) * k_pause




///Status
k_l = keyboard_check(vk_left)
k_r = keyboard_check(vk_right)
k_u = keyboard_check(vk_up)
k_d = keyboard_check(vk_down)

k_j = keyboard_check(ord('Z'))
k_ma= keyboard_check(ord('X'))
k_da= keyboard_check(ord('C'))
k_sa= keyboard_check(vk_space)

k_pause = keyboard_check(vk_enter)
