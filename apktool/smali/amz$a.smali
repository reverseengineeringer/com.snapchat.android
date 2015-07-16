.class public final Lamz$a;
.super Lbhw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation runtime Lud;
.end annotation


# instance fields
.field final synthetic a:Lamz;


# direct methods
.method public constructor <init>(Lamz;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lamz$a;->a:Lamz;

    invoke-direct {p0}, Lbhw;-><init>()V

    return-void
.end method
