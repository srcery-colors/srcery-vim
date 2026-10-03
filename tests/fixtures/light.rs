// Srcery Light syntax specimen.
use std::fmt;

#[derive(Debug, Clone)]
struct Color {
    name: String,
    channels: [u8; 3],
}

impl Color {
    fn new(name: &str) -> Self {
        Self { name: name.into(), channels: [252, 232, 195] }
    }
}

fn main() {
    let color = Color::new("parchment");
    println!("{:?}", color);
    let enabled = true;
    let count = 0xff;
}
