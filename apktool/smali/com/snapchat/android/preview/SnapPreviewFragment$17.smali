.class final Lcom/snapchat/android/preview/SnapPreviewFragment$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/preview/SnapPreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/preview/SnapPreviewFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/preview/SnapPreviewFragment;)V
    .locals 0

    .prologue
    .line 851
    iput-object p1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$17;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 854
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$17;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->h(Lcom/snapchat/android/preview/SnapPreviewFragment;)V

    .line 855
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$17;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->i(Lcom/snapchat/android/preview/SnapPreviewFragment;)Laji;

    move-result-object v0

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mSavedInGallery:Z

    .line 856
    return-void
.end method
