#[derive(Debug)]
struct Member {
    username: String,
    email: String,
    age: u64,
    active: bool
}

fn main() {
    let mut member_1 = Member {
        username: String::from("Bodeo"),
        email: String::from("bodo@mail.com"),
        age: 30,
        active: true,
    };

    member_1.username = "ThinhBodo".to_string();
    println!("{:#?}", member_1);
}
