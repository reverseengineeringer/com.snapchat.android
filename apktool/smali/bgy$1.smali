.class final Lbgy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lapg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbgy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbgy;


# direct methods
.method constructor <init>(Lbgy;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lbgy$1;->this$0:Lbgy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanh;)V
    .locals 3

    .prologue
    .line 56
    invoke-static {p1}, Laph;->a(Lanh;)I

    move-result v0

    .line 57
    iget-object v1, p0, Lbgy$1;->this$0:Lbgy;

    invoke-static {v1}, Lbgy;->a(Lbgy;)Ljava/util/HashSet;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lbgy$1;->this$0:Lbgy;

    invoke-static {v1}, Lbgy;->a(Lbgy;)Ljava/util/HashSet;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 59
    instance-of v0, p1, Lans;

    if-eqz v0, :cond_0

    .line 60
    check-cast p1, Lans;

    .line 62
    iget-object v0, p1, Lans;->a:Ljava/util/ArrayList;

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
    iget-object v2, p0, Lbgy$1;->this$0:Lbgy;

    invoke-static {v2, v0}, Lbgy;->a(Lbgy;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method
