<input type="hidden" template-variable="group_name" value="{group.name}" />
<input type="hidden" template-variable="group_slug" value="{group.slug}" />
<input type="hidden" template-variable="group_gallery_page" value="overview" />
<input type="hidden" template-variable="currentPage" value="{currentPage}" />
<input type="hidden" template-variable="pageCount" value="{pageCount}" />

<h1>{group.name} - Photo gallery <button data-func="group-gallery.upload" class="btn btn-default pull-right" type="button">Upload</button></h1>

<div class="panel panel-default">
    <div class="panel-body">
        <div class="group-gallery-overview-pagination">
            <!-- IMPORT partials/paginator.tpl -->
        </div>

        <div class="group-gallery-overview row">
            <!-- BEGIN images -->
            <div class="col-sm-3 group-gallery-overview-item">
                <a href="/groups/{group.slug}/gallery/{images.id}">
                    <div class="group-gallery-image-crop" style="background-image: url({images.url})"></div>
                    <h4 class="group-gallery-image-caption">{images.caption}</h4>
                </a>
                <div class="group-gallery-image-details">
                    <p>Uploaded by <a href="/user/{images.author.userslug}" class="group-gallery-image-details-author">{images.author.username}</a></p>
                    <p><span class="group-gallery-image-details-views">{images.viewcount} Views</span> | <span class="group-gallery-image-details-comments">{images.commentcount} Comments</span></p>
                </div>
            </div>
            <!-- END images -->
        </div>
    </div>
</div>