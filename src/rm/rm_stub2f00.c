// TODO, not possible in C? Seems to be a "offload" from lvl_set_current_level.. wtf is 2f50
// void rm_stub2f00(void) {
//     s16 index = *(s16 *)0x8033DDF8; // somewhere in gObjectPool
//
//     if (*(u8 *)(0x80402EC0 + index) != 1) {
//         funcA(); // 0x8024BF90 lvl_set_current_level
//     }
//
//     funcB(); // 0x8024BF58 lvl_set_current_level
//
//     if (*(u8 *)(0x80402E50 + index) != 1) {
//         return;
//     }
//
//     camera_course_processing(); // 0x8028EEB0
// }
