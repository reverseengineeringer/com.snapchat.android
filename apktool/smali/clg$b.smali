.class final Lclg$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lclg$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lclg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Lclg$e;

.field private final b:Lclg$e;


# direct methods
.method constructor <init>(Lclg$e;Lclg$e;)V
    .locals 0

    .prologue
    .line 991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 992
    iput-object p1, p0, Lclg$b;->a:Lclg$e;

    .line 993
    iput-object p2, p0, Lclg$b;->b:Lclg$e;

    .line 994
    return-void
.end method
