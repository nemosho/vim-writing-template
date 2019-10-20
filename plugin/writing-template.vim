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

function! InsertObjectiveHeader()
	call InsertHeader("Objective")
endfunction

function! InsertProblemHeader()
	call InsertHeader("Problem")
endfunction

function! InsertQuestionHeader()
	call InsertHeader("Question")
endfunction

function! InsertAnswerHeader()
	call InsertHeader("Answer")
endfunction

function! DrawLine()
	execute ":normal o" . "---"
endfunction

function! InsertWritingTemplate()
	call DrawLine()
	call InsertPurposeHeader()
	call InsertReaderHeader()
	call DrawLine()
	call InsertObjectiveHeader()
	call InsertProblemHeader()
	call InsertQuestionHeader()
	execute ":normal o"
	call InsertAnswerHeader()
	call DrawLine()
endfunction

command! WritingTemplate call InsertWritingTemplate()
