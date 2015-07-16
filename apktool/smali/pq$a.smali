.class public final Lpq$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public onValue:Ljava/lang/String;

.field public studyId:Ljava/lang/String;

.field public variable:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lpq$a;->studyId:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lpq$a;->variable:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lpq$a;->onValue:Ljava/lang/String;

    .line 62
    return-void
.end method
