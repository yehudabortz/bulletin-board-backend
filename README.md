# Bulletin Board (Backend)

Bulletin Board Backed is a Ruby on Rails API that interacts with [Bulletin Board Frontend](https://github.com/yehudabortz/bulletin-board-frontend), to deliver JSON upon request and persits data about different bulletin boards and their items.

## Installation

- Clone this repository

`git clone git@github.com:yehudabortz/bulletin-board-backend.git`

- Migrate database migrations with

```bash
  rails db:migrate
```

- Starts the server with

```bash
  rails s
```

- See frontend [README](https://github.com/yehudabortz/bulletin-board-frontend) for installtion.

## Usage

GET all bulletins

```bash
http://localhost:3000/bulletins
```

GET a specific bulletin

```bash
http://localhost:3000/bulletins/[:id]
```

GET all boards

```bash
http://localhost:3000/boards
```

GET a specific board

```bash
http://localhost:3000/boards/[:id]
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://github.com/yehudabortz/bulletin-board-backend/blob/main/LICENSE)
