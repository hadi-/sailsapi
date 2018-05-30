/**
 * Module dependencies
 */

// ...


/**
 * category/getone.js
 *
 * Getone category.
 */
module.exports = async function getone(req, res) {
    const id = req.query.id;
    let resto = await Category.find(id).populate('category_id');
    let result = {};
    if (resto.length > 0) {
        result = resto[0].category_id;
    }
    return res.json(result);

};
