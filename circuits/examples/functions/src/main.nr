// // they take inputs and -> return outputs
// fn add_one(x: Field) -> Field {
//     x + 1
// }

fn add_one(x : Field) -> Field { // take inputs and -> return outputs
    x + 1 //omit semi-colon to return
}

// // function calls can be nested
// fn add_two(x: Field) -> Field {
//     add_one(x + 1)
// }

fn add_two(x : Field) -> Field {
    add_one(x + 1)
}

// // entrypoint fn outputs must be public (to be verifiable)
// fn main(x : Field) -> pub Field {
//     add_two(x)
// }

fn main(x : Field) -> pub Field { // entrypoint function outputs MUST BE PUBLIC TO BE VERIFIABLE
    add_two(x)
}

// // it can be a good idea to test functions individually
// #[test]
// fn test_add_one() {
//     let got = add_one(0);
//     assert(got == 1);
// }

// it can be a good idea to test functions individually
#[test]
fn test_add_one() {
    let got = add_one(0);
    assert(got == 1);
}

// #[test]
// fn test_add_two() {
//     let got = add_two(17);
//     assert(got == 19);
// }

#[test]
fn test_add_two() {
    let got = add_two(17);
    assert(got == 19);
}

// // as well as testing the larger unit
// #[test]
// fn test_main() {
//     let got = main(0);
//     assert(got == 2);
// }

#[test]
fn test_main() {
    let got = main(0);
    assert(got == 2);
}
