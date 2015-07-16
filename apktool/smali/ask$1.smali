.class final Lask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lask;->a(Lasi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lasi;

.field final synthetic b:Lask;


# direct methods
.method constructor <init>(Lask;Lasi;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lask$1;->b:Lask;

    iput-object p2, p0, Lask$1;->a:Lasi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lask$1;->b:Lask;

    iget-object v0, v0, Lask;->a:Lasj;

    iget-object v1, p0, Lask$1;->a:Lasi;

    invoke-interface {v0, v1}, Lasj;->a(Lasi;)V

    .line 30
    return-void
.end method
