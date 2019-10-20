function! InsertHeader(header)
	let header = a:header . ": "
	execute ":normal o" . header
endfunction

function! InsertPurposeHeader()
	call InsertHeader("Purpose")
endfunction

function! InsertReaderHeader()
	call InsertHeader("Reader")
endfunction

function! InsertWritingTemplate()
	call InsertPurposeHeader()
	call InsertReaderHeader()
endfunction

command! WritingTemplate call InsertWritingTemplate()
