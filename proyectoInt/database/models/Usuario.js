module.exports = ( sequelize, DataTypes) =>{
    let alias = "Usuario";

    let cols = {
        id: {
            autoIncrement: true,
            primaryKey: true,
            type: DataTypes.INTEGER
        },
        nombre: {
            type: DataTypes.STRING
        },
        apellido: {
            type: DataTypes.STRING

        },
        fecha_nacimiento: {
            type: DataTypes.DATE

        },
        mail: {
            type: DataTypes.STRING
        },
        contrasena: {
            type: DataTypes.STRING
        },
        numero_telefono: {
            type: DataTypes.STRING
        },

    }

    let configs = {
        tableName: "usuarios",
        timestamps: false

    }

    const Usuario = sequelize.define(alias, cols, configs);

    return Usuario;

}

