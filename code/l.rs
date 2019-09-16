use std::io;
use std::io::Write; // <--- bring flush() into scope
fn main() {
    print!("l");
    io::stdout().flush().unwrap();
}