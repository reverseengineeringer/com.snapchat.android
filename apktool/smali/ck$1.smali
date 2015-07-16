.class final Lck$1;
.super Lck;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lck;->b(Ljava/lang/String;)Lck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lck;


# direct methods
.method constructor <init>(Lck;Lck;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 219
    iput-object p1, p0, Lck$1;->c:Lck;

    iput-object p3, p0, Lck$1;->b:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lck;-><init>(Lck;B)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 221
    if-nez p1, :cond_0

    iget-object v0, p0, Lck$1;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lck$1;->c:Lck;

    invoke-virtual {v0, p1}, Lck;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Lck;
    .locals 2

    .prologue
    .line 225
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already specified useForNull"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
