// NimNim runs without a console window: NimNim is the whole UI.
#![cfg_attr(not(debug_assertions), windows_subsystem = "windows")]

fn main() {
    nimnim_lib::run()
}
