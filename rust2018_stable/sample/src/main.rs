/**
 * OUPUT
 * $ cargo run
 * > 7
 * > [WARNING] All is well.
 */
fn main() {
    let add_three = add(3);
    println!("{}", add_three(4));

    let prefix_with_warning = add_prefix("WARNING".to_string());
    println!("{}", prefix_with_warning("All is well.".to_string()));
}

// Example 1: Addition
fn add(a: i32) -> impl Fn(i32) -> i32 {
    move |b| b + a
}

// Example 2: String Prefixing
fn add_prefix(a: String) -> impl Fn(String) -> String {
    move |b| format!("[{}] {}", a, b)
}
