.class final Lzv$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzv;->a(Lnf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnf;

.field final synthetic b:Lzv;


# direct methods
.method constructor <init>(Lzv;Lnf;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lzv$1;->b:Lzv;

    iput-object p2, p0, Lzv$1;->a:Lnf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lzv$1;->b:Lzv;

    iget-object v1, p0, Lzv$1;->a:Lnf;

    invoke-virtual {v0, v1}, Lzv;->b(Lnf;)V

    .line 136
    return-void
.end method
