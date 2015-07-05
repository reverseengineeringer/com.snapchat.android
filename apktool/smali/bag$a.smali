.class public final Lbag$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final mClassName:Ljava/lang/String;

.field public final mMethodName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lbag$a;->mClassName:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lbag$a;->mMethodName:Ljava/lang/String;

    .line 59
    return-void
.end method
