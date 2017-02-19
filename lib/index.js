import yaml from 'js-yaml'
import convertToSlug from 'limax'
import { render } from 'ejs'

function generateContext (scheme) {
  const context = {
    scheme: scheme.scheme,
    author: scheme.author,
    schemeSlug: convertToSlug(scheme.scheme, { lower: true }),
    value: {}
  }
  Object.keys(scheme).forEach(function (key) {
    const matches = key.match(/^value(.+?)$/)
    if (matches) {
      const value = matches[1]
      const color = scheme[key]
      context.value[value] = {
        hex: color,
        hexbgr: color.match(/.{1,2}/g).reverse().join(''),
        dhex: color.match(/.{1,2}/g).map(c => c + c).join(''),
        srgb: color.match(/.{1,2}/g).map(c => parseInt(c, 16) / 255),
        rgb: color.match(/.{1,2}/g).map(c => parseInt(c, 16))
      }
    }
  })
  return context
}

function buildTheme (yamlScheme, ejsTempl) {
  const scheme = yaml.load(yamlScheme)
  const context = generateContext(scheme)
  const theme = render(ejsTempl, context)
  return theme
}

export {
  generateContext,
  buildTheme
}
