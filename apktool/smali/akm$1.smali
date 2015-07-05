.class final Lakm$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lakm;-><init>(Lcom/snapchat/android/model/chat/ChatMedia;Lcom/snapchat/android/ui/TextureVideoView;Landroid/widget/ImageView;Landroid/view/View;Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;Lakm$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lakm;


# direct methods
.method constructor <init>(Lakm;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lakm$1;->this$0:Lakm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 90
    const-string v0, "ChatVideoItemProxy"

    const-string v1, "[%d] Chat video reload clicked %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lakm$1;->this$0:Lakm;

    invoke-static {v4}, Lakm;->a(Lakm;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lakm$1;->this$0:Lakm;

    invoke-static {v4}, Lakm;->b(Lakm;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lakm$1;->this$0:Lakm;

    invoke-static {v0}, Lakm;->c(Lakm;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lakm$1;->this$0:Lakm;

    invoke-static {v0}, Lakm;->d(Lakm;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    iget-object v0, p0, Lakm$1;->this$0:Lakm;

    invoke-virtual {v0}, Lakm;->b()V

    .line 95
    :cond_1
    return-void
.end method
