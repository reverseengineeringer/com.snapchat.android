.class public final Lyd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lyd;


# direct methods
.method public constructor <init>(Lyd;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lyd$1;->a:Lyd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lyd$1;->a:Lyd;

    iget-object v0, v0, Lyd;->d:Lyd$a;

    invoke-interface {v0}, Lyd$a;->a()V

    .line 80
    iget-object v0, p0, Lyd$1;->a:Lyd;

    invoke-virtual {v0}, Lyd;->a()V

    .line 81
    return-void
.end method
