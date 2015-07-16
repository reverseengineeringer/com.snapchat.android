.class final Laoc$a;
.super Lblt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation runtime Lud;
.end annotation


# instance fields
.field final synthetic a:Laoc;


# direct methods
.method constructor <init>(Laoc;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Laoc$a;->a:Laoc;

    invoke-direct {p0}, Lblt;-><init>()V

    return-void
.end method
