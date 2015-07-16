.class public final Lyz$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lyz;


# direct methods
.method public constructor <init>(Lyz;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lyz$1;->a:Lyz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lyz$1;->a:Lyz;

    iget-object v0, v0, Lyz;->d:Lyz$a;

    invoke-interface {v0}, Lyz$a;->a()V

    .line 80
    iget-object v0, p0, Lyz$1;->a:Lyz;

    invoke-virtual {v0}, Lyz;->a()V

    .line 81
    return-void
.end method
