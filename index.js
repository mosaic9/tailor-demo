const http = require("http")
const path = require("path")
const Tailor = require("node-tailor")
const fetchTemplateFromFs = require("node-tailor/lib/fetch-template")

const templatePath = precess.env.TEMPLATE_PATH || path.join(process.cwd(), "templates")
const baseTemplate = (function () {
	if (process.env.BASE_TEMPLATE) {
		return require(process.env.BASE_TEMPLATE)
	}
})()
const fetchTemplate = fetchTemplateFromFs(templatePath, baseTemplate)

const tailor = new Tailor({fetchTemplate})
const server = http.createServer(tailor.requestHandler)
server.listen(process.env.PORT || 8001)
