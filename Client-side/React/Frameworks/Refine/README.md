# [Refine](https://refine.dev/)
[GitHub](https://github.com/refinedev/refine)

> Build React-based internal tools, admin panels, dashboards & B2B apps with unmatched flexibility.

> Refine's hooks and components simplifies the development process and eliminates the repetitive tasks by providing industry-standard solutions for crucial aspects of a project, including authentication, access control, routing, networking, state management, and i18n.

[Enterprise Edition](https://refine.dev/enterprise/)

[Demos/Templates](https://refine.dev/templates/):
- [E-Commerce Application](https://example.admin.refine.dev/)
- [CRM Application](https://example.crm.refine.dev/)

History:
- 2023-01 [Show HN: Refine v3.97 -- Open-source React framework for building CRUD apps | Hacker News](https://news.ycombinator.com/item?id=34515128)
- 2023-03 [We released refine v4! To celebrate the new release of our open-source React-based framework(8.4K⭐ on GitHub), we invite you to Ask Us Anything! : r/reactjs](https://www.reddit.com/r/reactjs/comments/11r65oy/we_released_refine_v4_to_celebrate_the_new/)
- 2023-08 [Launch HN: Refine (YC S23) -- Open-source platform for enterprise web apps | Hacker News](https://news.ycombinator.com/item?id=37064822)

[Comparison | Refine vs React-Admin vs AdminBro vs Retool vs Redwood | Refine](https://refine.dev/docs/further-readings/comparison/)
- [React-admin vs Refine - Which React Framework is Best for B2B Apps? | Refine](https://refine.dev/blog/react-admin-vs-refine/)
- [Best React Admin Dashboard Libraries 2023 | Refine](https://refine.dev/blog/react-admin-dashboard/)

## [Data Provider](https://refine.dev/docs/data/data-provider/)
```ts
const dataProvider: DataProvider = {
    // required methods
    getApiUrl: () => "",
    getList: ({ resource, pagination, sorters, filters, meta }) => Promise,
    getOne: ({ resource, id, meta }) => Promise,
    create: ({ resource, variables, meta }) => Promise,
    update: ({ resource, id, variables, meta }) => Promise,
    deleteOne: ({ resource, id, variables, meta }) => Promise,
    // optional methods
    getMany: ({ resource, ids, meta }) => Promise,
    createMany: ({ resource, variables, meta }) => Promise,
    updateMany: ({ resource, ids, variables, meta }) => Promise,
    deleteMany: ({ resource, ids, variables, meta }) => Promise,
    custom: ({ url, method, filters, sorters, payload, query, headers, meta }) =>
    Promise,
};
```

## [Tables](https://refine.dev/docs/guides-concepts/tables/)
- TanStack Table
- AntD
- MUI