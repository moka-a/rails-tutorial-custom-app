module ApplicationHelper
	def full_title(page_title)
		base_title = "PhotoBook | Board"
		if page_title.empty?
			base_title
		else
			"#{base_title}|#{page_title}"
		end
	end

	# Paging helper
    def getTotalPageList( total_cnt, rowspage )
        if ((total_cnt % rowspage) == 0)
            total_pages = total_cnt / rowspage;
        else
            total_pages = (total_cnt / rowspage) + 1;
        end

        totalPageList = (1..total_pages).to_a
        #totalPageList = Array (1..total_pages)
    end

end
