.class public abstract Laej$c;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laej;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 787
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 788
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public onChange(Z)V
    .locals 0

    .prologue
    .line 792
    invoke-virtual {p0}, Laej$c;->a()V

    .line 793
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .prologue
    .line 797
    invoke-virtual {p0}, Laej$c;->a()V

    .line 798
    return-void
.end method
