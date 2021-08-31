class Top {
  final String name;
  final String image;
  final bool? active;
  final bool? story;

  Top({required this.name, required this.image, this.active, this.story});
}

List<Top> topBarMenu = [
  Top(name: '', image: '', active: null),
  Top(
    name: "Hammoud",
    active: true,
    story: true,
    //image:"https://images.unsplash.com/photo-1604146673487-d481c79de504?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=675&q=80"),
    image: "https://images.unsplash"
        ".com/photo-1611817757571-75fe5c08ffd9?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
  ),
  Top(
      name: "Saahir",
      active: true,
      story: true,
      image:
          "https://images.unsplash.com/photo-1570124474905-1dff85c6fbf1?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=634&q=80"),
  Top(
      name: "Mastoor ",
      active: false,
      story: true,
      image:
          "https://images.unsplash.com/photo-1600567419574-af605c1a65da?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=634&q=80"),
  Top(
      name: "Izzat",
      active: true,
      story: false,
      image:
          "https://images.unsplash.com/photo-1586760175176-7015b19ebba6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"),
  Top(
      name: "Aslam",
      active: false,
      story: false,
      image:
          "https://images.unsplash.com/photo-1552169499-210274ed2343?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1054&q=80"),
  Top(
      name: "Jaabir",
      active: true,
      story: true,
      image:
          "https://images.unsplash.com/photo-1551330343-7d818770bf16?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=634&q=80"),
  Top(
      name: "Qaaid",
      active: true,
      story: false,
      image:
          "https://images.unsplash.com/photo-1583136718959-c9c3dbbdbaa9?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80"),
  Top(
      name: "Hashmi",
      active: false,
      story: true,
      image:
          "https://images.unsplash.com/photo-1599940213231-6aa0379da55a?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=634&q=80"),
  Top(
      name: "Baheej",
      active: true,
      story: false,
      image:
          "https://images.unsplash.com/photo-1602418146168-9321b86082d1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"),
  Top(
      name: "Shaheer",
      active: false,
      story: true,
      image:
          "https://images.unsplash.com/photo-1538506353478-d0ba97e73343?ixid=MXwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTF8NDA2NjE3MTd8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60"),
];
