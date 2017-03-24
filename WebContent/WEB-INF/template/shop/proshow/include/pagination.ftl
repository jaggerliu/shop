[#if totalPages > 1]

    <div class="col-sm-6 text-left">
        <ul class="pagination">
            [#if isFirst]
		    [#else]
            <li><a class="firstPage" href="[@pattern?replace("{pageNumber}", "${firstPageNumber}")?interpret /]">|&lt;</a></li>
		    [/#if]
            [#if hasPrevious]
                <li><a href="[@pattern?replace("{pageNumber}", "${previousPageNumber}")?interpret /]">&lt;</a></li>
            [/#if]
            [#list segment as segmentPageNumber]
                [#if segmentPageNumber_index == 0 && segmentPageNumber > firstPageNumber + 1]
                    <li><a>...</a></li>
                [/#if]
                [#if segmentPageNumber != pageNumber]
                    <li><a href="[@pattern?replace("{pageNumber}", "${segmentPageNumber}")?interpret /]">${segmentPageNumber}</a></li>   
                [#else]
                    <li class="active"><span>${segmentPageNumber}</span></li>
                [/#if]
                [#if !segmentPageNumber_has_next && segmentPageNumber < lastPageNumber - 1]
                      <li><a>...</a></li>
                [/#if]
            [/#list]
            [#if hasNext]
                 <li><a href="[@pattern?replace("{pageNumber}", "${nextPageNumber}")?interpret /]">&gt;</a></li>
            [/#if]
            [#if isLast]
            [#else]	
                 <li><a href="[@pattern?replace("{pageNumber}", "${lastPageNumber}")?interpret /]">&gt;|</a></li>
            [/#if]
        </ul>
    </div>

	<div class="col-sm-6 text-right">
		Showing page${pageNumber} (${totalPages} Pages)
	</div>
[/#if]