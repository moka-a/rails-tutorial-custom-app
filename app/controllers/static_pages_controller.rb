class StaticPagesController < ApplicationController

	include ApplicationHelper


	def home
	end

	def board
		@boardList = Boardrow.find(:all, :limit =>rowspage, :order=>'created_at desc')  #(1)      
        @totalCnt = Boardrow.all.count #(2)
        @current_page = 1  #(3) 최초 화면이므로 1
        @totalPageList = getTotalPageList(@totalCnt, rowspage) #(4)
	end

	def show_write_form
	end


	def DoWriteBoard
        @rowData = Boardrow.new( name: params[:name],
            subject: params[:subject], memo: params[:memo], hits:0)

        @rowData.save

        redirect_to '/'
    end

	# def listSpecificPageWork
 #        @current_page = params[:current_page]
 #        @totalCnt = Boardrow.all.count
 #        @totalPageList = getTotalPageList( @totalCnt, rowspage)

 #        # 페이지를 가지고 범위 데이터를 조회한다 => raw SQL 사용
 #        #Oracle 사용시
 #        # @boardList = MyRailsBoardRow.find_by_sql ["SELECT Z.* FROM(SELECT X.*, ceil( rownum / %s ) \
 #        #     as page FROM ( SELECT ID,SUBJECT,NAME, CREATED_AT, MAIL,MEMO,HITS \
 #        #         FROM MY_RAILS_BOARD_ROWS  ORDER BY ID DESC ) X ) Z WHERE page = %s", rowsPerPage, @current_page]

 #        #sqlite3 사용시
 #        @boardList = Boardrow.find_by_sql ["select ID,SUBJECT,NAME, CREATED_AT, MAIL,MEMO,HITS \
 #                from MY_RAILS_BOARD_ROWS ORDER BY id desc limit %s offset %s",
 #                rowspage, @current_page.to_i ==1 ? 0 : 2*(@current_page.to_i-1) ]
 #    end


	def MyPage
	end
end