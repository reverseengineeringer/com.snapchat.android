.class final Larl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Larl;->a(Larj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Larj;

.field final synthetic b:Larl;


# direct methods
.method constructor <init>(Larl;Larj;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Larl$1;->b:Larl;

    iput-object p2, p0, Larl$1;->a:Larj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Larl$1;->b:Larl;

    iget-object v0, v0, Larl;->a:Lark;

    iget-object v1, p0, Larl$1;->a:Larj;

    invoke-interface {v0, v1}, Lark;->a(Larj;)V

    .line 30
    return-void
.end method
