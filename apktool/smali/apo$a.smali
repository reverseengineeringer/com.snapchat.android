.class public final Lapo$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lapo;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lavx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lapo;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lavx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    iput-object p1, p0, Lapo$a;->a:Lapo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p2, p0, Lapo$a;->b:Ljava/util/List;

    .line 112
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 116
    iget-object v0, p0, Lapo$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavx;

    .line 117
    iget-object v2, p0, Lapo$a;->a:Lapo;

    iget-object v2, v2, Lapo;->a:Lavw;

    iget-object v3, p0, Lapo$a;->a:Lapo;

    iget-object v3, v3, Lapo;->d:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lavw;->a(Landroid/content/Context;Lavx;)V

    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method
