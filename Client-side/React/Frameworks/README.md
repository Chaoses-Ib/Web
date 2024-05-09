# Frameworks
- [→Next.js](Next.js/README.md)

- [Gatsby: The best React-based framework with performance, scalability and security built in.](https://github.com/gatsbyjs/gatsby)
  - Relatively old (2015)

- [Docusaurus: Easy to maintain open source documentation websites.](https://github.com/facebook/docusaurus)

- [Meteor: The JavaScript App Platform](https://github.com/meteor/meteor)

- [Appwrite: Your backend, minus the hassle.](https://github.com/appwrite/appwrite)

- [Taro: 开放式跨端跨框架解决方案，支持使用 React/Vue/Nerv 等框架来开发微信/京东/百度/支付宝/字节跳动/ QQ 小程序/H5/React Native 等应用。 https://taro.zone/](https://github.com/NervJS/taro)

- [Medusa: Building blocks for digital commerce](https://github.com/medusajs/medusa)

## Admin dashboards
- [Ant Design Pro: 👨🏻‍💻👩🏻‍💻 Use Ant Design like a Pro!](https://github.com/ant-design/ant-design-pro)
  - [又快又美又好用的前端框架 Ant Design Pro V5 发布啦 - Issue #8656 - ant-design/ant-design-pro](https://github.com/ant-design/ant-design-pro/issues/8656)
  - [是否支持vite - ant-design/ant-design-pro - Discussion #10577](https://github.com/ant-design/ant-design-pro/discussions/10577)

- [react-admin: A frontend Framework for building data-driven applications running on top of REST/GraphQL APIs, using TypeScript, React and Material Design](https://marmelab.com/react-admin/) ([GitHub](https://github.com/marmelab/react-admin))
  - Relatively old (2016)
  - [Data Providers](https://marmelab.com/react-admin/DataProviders.html)
    ```ts
    const dataProvider = {
        getList:    (resource, params) => Promise, // get a list of records based on sort, filter, and pagination
        getOne:     (resource, params) => Promise, // get a single record by id
        getMany:    (resource, params) => Promise, // get a list of records based on an array of ids
        getManyReference: (resource, params) => Promise, // get the records referenced to another record, e.g. comments for a post
        create:     (resource, params) => Promise, // create a record
        update:     (resource, params) => Promise, // update a record based on a patch
        updateMany: (resource, params) => Promise, // update a list of records based on an array of ids and a common patch
        delete:     (resource, params) => Promise, // delete a record by id
        deleteMany: (resource, params) => Promise, // delete a list of records based on an array of ids
    }
    ```
    All methods are mandatory.

  History:
  - 2023-03 [Anyone using react-admin? : r/reactjs](https://www.reddit.com/r/reactjs/comments/11vj5rz/anyone_using_reactadmin/)

- [→Refine: Open-source Retool for Enterprise](Refine/README.md)

- [Arco Design Pro: An out-of-the-box solution to quickly build enterprise-level applications based on Arco Design.](https://github.com/arco-design/arco-design-pro)

- [Slash Admin: A modern react admin. It is based on react 18, vite and TypeScript. It's fast !](https://github.com/d3george/slash-admin)

- [react-antd-admin: A Management System Web powered by React. 一个使用 React 和 Antd 开发管理系统。](https://github.com/basefas/react-antd-admin)

Discussions:
- 2019-07 [Looking for alternatives to react-admin : r/node](https://www.reddit.com/r/node/comments/ch6o6j/looking_for_alternatives_to_reactadmin/)
- 2023-02 [为什么 React 的后台模版这么少 - V2EX](https://fast.v2ex.com/t/914506)
- 2023-07 [Pros and cons of off-the-shelf solutions for creating a control panel : r/reactjs](https://www.reddit.com/r/reactjs/comments/14yp8uv/pros_and_cons_of_offtheshelf_solutions_for/)
- 2023-07 [求推荐基于 React 或 Vue 的管理后台 - V2EX](https://www.v2ex.com/t/957562)
- 2023-09 [react 有好用的后台管理项目推荐吗？ - V2EX](https://fast.v2ex.com/t/971512)

Low code:
- [Appsmith: Platform to build admin panels, internal tools, and dashboards. Integrates with 25+ databases and any API.](https://github.com/appsmithorg/appsmith)