.class final Lagh$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lagh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lagh;


# direct methods
.method constructor <init>(Lagh;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lagh$1;->b:Lagh;

    iput-object p2, p0, Lagh$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 61
    iget-object v1, p0, Lagh$1;->b:Lagh;

    iget-object v0, p0, Lagh$1;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/FriendAction$BlockReason;

    invoke-virtual {v1, v0}, Lagh;->a(Lcom/snapchat/android/model/FriendAction$BlockReason;)V

    .line 62
    return-void
.end method
