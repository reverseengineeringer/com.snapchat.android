.class final Lalh$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lalh;-><init>(Lcom/snapchat/android/model/chat/ChatMedia;Lcom/snapchat/android/ui/TextureVideoView;Landroid/widget/ImageView;Landroid/view/View;Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;Lalh$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lalh;


# direct methods
.method constructor <init>(Lalh;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lalh$1;->this$0:Lalh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lalh$1;->this$0:Lalh;

    invoke-static {v2}, Lalh;->a(Lalh;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lalh$1;->this$0:Lalh;

    invoke-static {v2}, Lalh;->b(Lalh;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 91
    iget-object v0, p0, Lalh$1;->this$0:Lalh;

    invoke-static {v0}, Lalh;->c(Lalh;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lalh$1;->this$0:Lalh;

    invoke-static {v0}, Lalh;->d(Lalh;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    iget-object v0, p0, Lalh$1;->this$0:Lalh;

    invoke-virtual {v0}, Lalh;->b()V

    .line 95
    :cond_1
    return-void
.end method
