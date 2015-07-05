.class final Lbfy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laok;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbfy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbfy;


# direct methods
.method constructor <init>(Lbfy;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lbfy$1;->this$0:Lbfy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lamk;)V
    .locals 3

    .prologue
    .line 56
    invoke-static {p1}, Laol;->a(Lamk;)I

    move-result v0

    .line 57
    iget-object v1, p0, Lbfy$1;->this$0:Lbfy;

    invoke-static {v1}, Lbfy;->a(Lbfy;)Ljava/util/HashSet;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lbfy$1;->this$0:Lbfy;

    invoke-static {v1}, Lbfy;->a(Lbfy;)Ljava/util/HashSet;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 59
    instance-of v0, p1, Lamv;

    if-eqz v0, :cond_0

    .line 60
    check-cast p1, Lamv;

    .line 62
    iget-object v0, p1, Lamv;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    iget-object v2, p0, Lbfy$1;->this$0:Lbfy;

    invoke-static {v2, v0}, Lbfy;->a(Lbfy;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method
