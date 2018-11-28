/**
 * Created by hangeonho on 28/11/2018.
 */
const { GraphQLServer } = require('graphql-yoga');

// 1
const typeDefs = `
type Query {
  info: String!
}
`;

// 2
const resolvers = {
  Query: {
    info: () => `This is the API of a Hackernews Clone`
  }
};

// 3
const server = new GraphQLServer({
  typeDefs,
  resolvers
});

server.start(() => console.log("hello graphQL!"));
