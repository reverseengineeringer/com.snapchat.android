.class final Laxo$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laxo;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 136
    sget-object v0, Laxo;->MY_STORY_SNAP_THUMBNAIL_CACHE:Laxn;

    invoke-virtual {v0}, Laxn;->b()V

    .line 137
    sget-object v0, Laxo;->STORY_SNAP_RECEIVED_THUMBNAIL_CACHE:Laxn;

    invoke-virtual {v0}, Laxn;->b()V

    .line 138
    sget-object v0, Laxo;->DSNAP_MEDIA_CACHE:Laxn;

    invoke-virtual {v0}, Laxn;->b()V

    .line 139
    sget-object v0, Laxo;->STORY_RECEIVED_IMAGE_CACHE:Laxn;

    invoke-virtual {v0}, Laxn;->b()V

    .line 140
    sget-object v0, Laxo;->STORY_RECEIVED_VIDEO_CACHE:Laxn;

    invoke-virtual {v0}, Laxn;->b()V

    .line 141
    sget-object v0, Laxo;->SNAP_RECEIVED_IMAGE_CACHE:Laxn;

    invoke-virtual {v0}, Laxn;->b()V

    .line 142
    sget-object v0, Laxo;->SNAP_RECEIVED_VIDEO_CACHE:Laxn;

    invoke-virtual {v0}, Laxn;->b()V

    .line 143
    sget-object v0, Laxo;->CHAT_MEDIA_IMAGE_CACHE:Laxn;

    invoke-virtual {v0}, Laxn;->b()V

    .line 144
    sget-object v0, Laxo;->UNENCRYPTED_VIDEO_CACHE:Laxn;

    invoke-virtual {v0}, Laxn;->b()V

    .line 145
    sget-object v0, Laxo;->SAVE_STORY_TO_GALLERY_IMAGE_CACHE:Laxn;

    invoke-virtual {v0}, Laxn;->b()V

    .line 146
    sget-object v0, Laxo;->GEOFILTER_CACHE:Laxn;

    invoke-virtual {v0}, Laxn;->b()V

    .line 147
    sget-object v0, Laxo;->PROFILE_IMAGE_CACHE:Laxn;

    invoke-virtual {v0}, Laxn;->b()V

    .line 148
    sget-object v0, Laxo;->DISCOVER_SHARE:Laxn;

    invoke-virtual {v0}, Laxn;->b()V

    .line 149
    invoke-static {}, Laya;->a()Laya;

    move-result-object v0

    iget-object v0, v0, Laya;->mCache:Laxn;

    invoke-virtual {v0}, Laxn;->b()V

    .line 150
    sget-object v0, Laxo;->MY_SNAP_VIDEO_CACHE:Laxn;

    invoke-virtual {v0}, Laxn;->b()V

    .line 151
    sget-object v0, Laxo;->MY_SNAP_IMAGE_CACHE:Laxn;

    invoke-virtual {v0}, Laxn;->b()V

    .line 152
    return-void
.end method
