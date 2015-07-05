.class public abstract Ladj$c;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ladj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 645
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 646
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public onChange(Z)V
    .locals 0

    .prologue
    .line 650
    invoke-virtual {p0}, Ladj$c;->a()V

    .line 651
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .prologue
    .line 655
    invoke-virtual {p0}, Ladj$c;->a()V

    .line 656
    return-void
.end method
