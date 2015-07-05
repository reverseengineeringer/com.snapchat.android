.class public final Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$a;->a:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$a;->b:Ljava/lang/String;

    .line 47
    iput-wide p3, p0, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$a;->c:J

    .line 48
    return-void
.end method
