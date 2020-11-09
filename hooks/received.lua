local possibleEntities = {
    {
        id = "gordon",
        name = "Gordon Freeman",
        url = "https//static.wikia.nocookie.net/half-life/images/f/f3/Gordon_Freeman_%28Template%29.jpg/revision/latest/scale-to-width-down/350?cb=20191221105246&path-prefix=en"
    },
    {
        id = "alyx",
        name = "Alyx",
        url = "http://static.wikia.nocookie.net/half-life/images/7/77/YoungAlyxVance.jpg/revision/latest/scale-to-width-down/350?cb=20200323221922&path-prefix=en"
    },
    {
        id = "alyxpelada",
        name = "Alyx Pelada",
        url = "http://i.imgur.com/re1mSQI.png"
    },
    {
        id = "agub",
        name = "Agub",
        url = "http://i.imgur.com/4Uc59Fx.png"
    },
    {
        id = "jozesclevau",
        name = "Jozesclevau",
        url = "https//i.imgur.com/I5vGYVt.png"
    },
    {
        id = "xalalau",
        name = "Xablau Jubilozo",
        url = "https//i.imgur.com/0GffTwt.png"
    },
    {
        id = "gnomio",
        name = "Gnomo Puto de 12",
        url = "http://i.imgur.com/wqtjzc4.png"
    },
    {
        id = "drift",
        name = "Jorge Garcia",
        url = "http://i.ytimg.com/vi/djxymKNkRHw/maxresdefault.jpg"
    },
    {
        id = "caranguejo",
        name = "Head Crab",
        url = "http://steamuserimages-a.akamaihd.net/ugc/35239254040369279/7089A0237594A78521180CAFD6A108EDD7AA1A66/"
    }
}

currentEntity = currentEntity or nil

if context.channel == "771917493677719562" then
    send({
        embed = {
            color = 0x0099ff,
            title = "Some title",
            url = "https://discord.js.org",
            author = {
                name = "Some name",
                icon_url = "https://i.imgur.com/wSTFkRM.png",
                url = "https://discord.js.org"
            },
            description = "Some description here",
            thumbnail = {
                url = "https://i.imgur.com/wSTFkRM.png"
            },
            fields = {
                {
                    name = "Regular field title",
                    value = "Some value here"
                },
                {
                    name = "\\u200b",
                    value = "\\u200b",
                    inline = false
                },
                {
                    name = "Inline field title",
                    value = "Some value here",
                    inline = true
                },
                {
                    name = "Inline field title",
                    value = "Some value here",
                    inline = true
                },
                {
                    name = "Inline field title",
                    value = "Some value here",
                    inline = true
                }
            }
        },
        image = {
            url = "https =//i.imgur.com/wSTFkRM.png"
        },
        footer = {
            text = "Some footer text here",
            icon_url = "https://i.imgur.com/wSTFkRM.png"
        }
    })

    if context.input == "!pegar" then
        if currentEntity then
            send(string.format("%s pegou o %s", mention(), currentEntity.name))
        end
    else
        local shouldSpawn = math.random() < 1

        if shouldSpawn then
            currentEntity = possibleEntities[math.random(#possibleEntities)]
            send(string.format([[Um %s apareceu!]], currentEntity.name))
        end
    end
end