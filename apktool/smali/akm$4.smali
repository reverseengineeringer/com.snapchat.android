.class final Lakm$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lakm;->i()V
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
    .line 295
    iput-object p1, p0, Lakm$4;->this$0:Lakm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 298
    const-string v0, "[%d] Chat video error %s what(%d) extra(%d)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lakm$4;->this$0:Lakm;

    invoke-static {v3}, Lakm;->a(Lakm;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lakm$4;->this$0:Lakm;

    invoke-static {v2}, Lakm;->b(Lakm;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 300
    iget-object v1, p0, Lakm$4;->this$0:Lakm;

    invoke-static {v1, v0, p2}, Lakm;->a(Lakm;Ljava/lang/String;I)V

    .line 304
    return v4
.end method
