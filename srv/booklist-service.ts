import cds from '@sap/cds'

module.exports = class BooklistService extends cds.ApplicationService {
    // https://community.sap.com/t5/technology-q-a/how-can-i-return-a-draft-entity-using-cap-node-js/qaq-p/12674974
    init() {
        const { Books } = this.entities;

        this.on('createDraft', Books, async (req) => {
            console.log("createDraft called")
            // const book = await this.run(INSERT.into(Books).entries([
            //             {
            //                 ID: cds.utils.uuid(),
            //                 title: req.data.title,
            //                 publisher: 'Test'
            //             },
            //         ]))

            // const book = await this.send(
            //     "NEW", //event
            //     '/Books', //path
            //     { ID: cds.utils.uuid(),
            //       title: req.data.title,
            //       publisher: 'Test'
            //     }, 
            // );
            //TODO
            //Google Book APIから情報取得
            
            const book = await this.send({
                //@ts-ignore
                query: INSERT.into(Books).entries([
                    {
                        ID: cds.utils.uuid(),
                        title: req.data.title,
                        publisher: 'Test'
                    },
                ]),
                event: "NEW",
            });
            console.log(book)
            return book;
        })
        return super.init()
    }
}