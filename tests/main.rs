use cargo_insta_workspace_root_bug::add;

#[test]
fn it_works() {
    let result = add(2, 3);
    insta::assert_yaml_snapshot!(result);
}
