db.usuario.aggregate(
    [
        {
            $match:{
                id:"19"
            }
        },
        {
            $lookup:{
                from:'articulo',
                localField:'id',
                foreignField:'Usuario_id',
                as:'articulo'
            }
        },
        {
            $unwind: '$articulo'
        },
        {
            $lookup:{
                from:'categoria',
                localField:'articulo.Categoria_id',
                foreignField:'id',
                as:'categoria'

            }
        },
        {
            $unwind: '$categoria'
        },
        {
            $project:{
                _id:'$articulo.id',Titulo:'$articulo.Titulo',Fecha:'$articulo.fechacreacion',Categoria:'$categoria.Categoria'
            }
        }

    ]
 ).pretty()