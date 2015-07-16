.class public final Laah$b;
.super Lbkp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation runtime Lud;
.end annotation


# instance fields
.field final synthetic a:Laah;


# direct methods
.method public constructor <init>(Laah;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Laah$b;->a:Laah;

    invoke-direct {p0}, Lbkp;-><init>()V

    return-void
.end method
