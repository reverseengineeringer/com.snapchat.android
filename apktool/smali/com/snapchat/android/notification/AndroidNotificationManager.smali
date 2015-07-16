.class public final Lcom/snapchat/android/notification/AndroidNotificationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/notification/AndroidNotificationManager$3;,
        Lcom/snapchat/android/notification/AndroidNotificationManager$b;,
        Lcom/snapchat/android/notification/AndroidNotificationManager$a;,
        Lcom/snapchat/android/notification/AndroidNotificationManager$Type;,
        Lcom/snapchat/android/notification/AndroidNotificationManager$Destination;
    }
.end annotation


# static fields
.field public static final a:I

.field private static final e:[Ljava/lang/String;

.field private static final f:Lcom/snapchat/android/notification/AndroidNotificationManager;

.field private static final g:[J

.field private static h:Ljava/lang/String;


# instance fields
.field public final b:Laph;

.field public final c:Lakx;

.field public d:Z

.field private final i:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

.field private final j:Ltt;

.field private final k:Lnz;

.field private final l:Log;

.field private m:Lamu;

.field private n:Lamv;

.field private final o:Lakr;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->SNAP:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-virtual {v2}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->CHAT:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-virtual {v2}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->e:[Ljava/lang/String;

    .line 149
    new-instance v0, Lcom/snapchat/android/notification/AndroidNotificationManager;

    invoke-direct {v0}, Lcom/snapchat/android/notification/AndroidNotificationManager;-><init>()V

    sput-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->f:Lcom/snapchat/android/notification/AndroidNotificationManager;

    .line 153
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->g:[J

    .line 155
    const-string v0, "#AAAAAA"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->a:I

    return-void

    .line 153
    nop

    :array_0
    .array-data 8
        0x0
        0x32
        0x64
        0xb4
    .end array-data
.end method

.method private constructor <init>()V
    .locals 10

    .prologue
    .line 194
    invoke-static {}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->a()Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

    move-result-object v1

    invoke-static {}, Laph;->a()Laph;

    move-result-object v2

    invoke-static {}, Lakx;->c()Lakx;

    move-result-object v3

    invoke-static {}, Ltt;->a()Ltt;

    move-result-object v4

    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v5

    invoke-static {}, Lamu;->a()Lamu;

    move-result-object v6

    new-instance v7, Lamv;

    invoke-direct {v7}, Lamv;-><init>()V

    invoke-static {}, Lnz;->a()Lnz;

    move-result-object v8

    invoke-static {}, Log;->a()Log;

    move-result-object v9

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/snapchat/android/notification/AndroidNotificationManager;-><init>(Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;Laph;Lakx;Ltt;Lakr;Lamu;Lamv;Lnz;Log;)V

    .line 198
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;Laph;Lakx;Ltt;Lakr;Lamu;Lamv;Lnz;Log;)V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Lcom/snapchat/android/notification/AndroidNotificationManager;->i:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

    .line 210
    iput-object p2, p0, Lcom/snapchat/android/notification/AndroidNotificationManager;->b:Laph;

    .line 211
    iput-object p3, p0, Lcom/snapchat/android/notification/AndroidNotificationManager;->c:Lakx;

    .line 212
    iput-object p4, p0, Lcom/snapchat/android/notification/AndroidNotificationManager;->j:Ltt;

    .line 213
    iput-object p5, p0, Lcom/snapchat/android/notification/AndroidNotificationManager;->o:Lakr;

    .line 214
    iput-object p6, p0, Lcom/snapchat/android/notification/AndroidNotificationManager;->m:Lamu;

    .line 215
    iput-object p7, p0, Lcom/snapchat/android/notification/AndroidNotificationManager;->n:Lamv;

    .line 216
    iput-object p8, p0, Lcom/snapchat/android/notification/AndroidNotificationManager;->k:Lnz;

    .line 217
    iput-object p9, p0, Lcom/snapchat/android/notification/AndroidNotificationManager;->l:Log;

    .line 218
    return-void
.end method

.method public static a()Lcom/snapchat/android/notification/AndroidNotificationManager;
    .locals 1

    .prologue
    .line 221
    sget-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->f:Lcom/snapchat/android/notification/AndroidNotificationManager;

    return-object v0
.end method

.method private static a(Ljava/util/LinkedHashMap;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Lakt;",
            "Lcom/snapchat/android/notification/AndroidNotificationManager$a;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 870
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 872
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakt;

    .line 873
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 874
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    :cond_1
    invoke-virtual {v0}, Lakt;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/notification/AndroidNotificationManager$a;

    .line 878
    iget v3, v0, Lcom/snapchat/android/notification/AndroidNotificationManager$a;->b:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 879
    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    iget v0, v0, Lcom/snapchat/android/notification/AndroidNotificationManager$a;->b:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 881
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 885
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 229
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 233
    invoke-static {}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->values()[Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 234
    invoke-virtual {v4}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->getNotificationId()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 235
    invoke-virtual {v4}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/snapchat/android/database/table/NotificationTable;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/database/Cursor;)V
    .locals 11
    .annotation build Lcbr;
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 743
    sget-object v5, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->CASH:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    .line 744
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 745
    :cond_0
    invoke-static {p1, v5}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V

    .line 795
    :goto_0
    return-void

    .line 749
    :cond_1
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    move v8, v0

    .line 754
    :cond_2
    sget-object v1, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->SENDER:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnNumber()I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 755
    sget-object v4, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->SENDER_USERNAME:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnNumber()I

    move-result v4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 757
    sget-object v6, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->CASH_AMOUNT:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v6}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnNumber()I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 761
    invoke-virtual {v3, v1, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    invoke-interface {p3}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 764
    sget-object v1, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->NINJA_MODE:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnNumber()I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_1
    move v8, v1

    .line 767
    :cond_3
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 769
    invoke-static {v5}, Lcom/snapchat/android/notification/AndroidNotificationManager;->b(Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)I

    move-result v1

    .line 770
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 771
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 772
    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 774
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 781
    invoke-interface {v6, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 785
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 786
    aget-object v0, v1, v0

    invoke-interface {v6}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 790
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 791
    new-instance v6, Lcom/snapchat/android/notification/AndroidNotificationManager$a;

    invoke-direct {v6, v4}, Lcom/snapchat/android/notification/AndroidNotificationManager$a;-><init>(Ljava/lang/String;)V

    .line 793
    :goto_3
    invoke-static {p1}, Lcom/snapchat/android/notification/AndroidNotificationManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v8}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;Lcom/snapchat/android/notification/AndroidNotificationManager$a;Lcom/snapchat/android/notification/AndroidNotificationManager$b;Z)V

    goto/16 :goto_0

    :cond_4
    move v1, v0

    .line 764
    goto :goto_1

    .line 776
    :pswitch_0
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 777
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 778
    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object v6, v7

    goto :goto_3

    .line 774
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/database/Cursor;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V
    .locals 10
    .annotation build Lcbr;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 688
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 689
    :cond_0
    invoke-static {p1, p4}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V

    .line 739
    :cond_1
    :goto_0
    return-void

    .line 693
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 694
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    move v8, v3

    move-object v1, v7

    .line 699
    :goto_1
    sget-object v0, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->SENDER:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 700
    sget-object v0, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->SENDER_USERNAME:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 703
    invoke-virtual {v6, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 704
    if-nez v1, :cond_9

    .line 705
    :goto_2
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    :goto_3
    sget-object v1, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->TEXT:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnNumber()I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 710
    invoke-interface {p3}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 711
    sget-object v1, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->NINJA_MODE:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnNumber()I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_5

    move v1, v2

    :goto_4
    move v8, v1

    .line 714
    :cond_3
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_b

    .line 716
    invoke-static {p4}, Lcom/snapchat/android/notification/AndroidNotificationManager;->b(Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)I

    move-result v1

    .line 717
    if-gez v1, :cond_4

    invoke-static {p4}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 723
    :cond_4
    invoke-virtual {v6}, Ljava/util/LinkedHashSet;->size()I

    move-result v6

    if-ne v6, v2, :cond_8

    .line 724
    new-instance v6, Lcom/snapchat/android/notification/AndroidNotificationManager$a;

    invoke-direct {v6, v0}, Lcom/snapchat/android/notification/AndroidNotificationManager$a;-><init>(Ljava/lang/String;)V

    .line 728
    :goto_5
    invoke-static {p4}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 729
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 730
    invoke-static {p4}, Lnz;->b(Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V

    goto :goto_0

    :cond_5
    move v1, v3

    .line 711
    goto :goto_4

    :cond_6
    move-object v3, v4

    .line 737
    :goto_6
    invoke-static {p1}, Lcom/snapchat/android/notification/AndroidNotificationManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;Lcom/snapchat/android/notification/AndroidNotificationManager$a;Lcom/snapchat/android/notification/AndroidNotificationManager$b;Z)V

    goto/16 :goto_0

    .line 735
    :cond_7
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_7
    aget-object v1, v1, v4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v5, v4, v3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :pswitch_0
    invoke-static {v7, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_7

    :pswitch_1
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_7

    :cond_8
    move-object v6, v7

    goto :goto_5

    :cond_9
    move-object v0, v1

    goto/16 :goto_2

    :cond_a
    move-object v0, v1

    goto/16 :goto_3

    :cond_b
    move-object v1, v0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p1    # Lcom/snapchat/android/notification/AndroidNotificationManager$Type;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clearNotifications type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 243
    invoke-virtual {p1}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->getNotificationId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 244
    invoke-virtual {p1}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/snapchat/android/database/table/NotificationTable;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;Lcom/snapchat/android/notification/AndroidNotificationManager$a;Lcom/snapchat/android/notification/AndroidNotificationManager$b;Z)V
    .locals 6
    .param p6    # Lcom/snapchat/android/notification/AndroidNotificationManager$a;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p7    # Lcom/snapchat/android/notification/AndroidNotificationManager$b;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 907
    invoke-static {}, Lakr;->bG()Z

    move-result v0

    if-nez v0, :cond_1

    .line 961
    :cond_0
    :goto_0
    return-void

    .line 911
    :cond_1
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 914
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, p5, p6, p7, v2}, Lamv;->a(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;Lcom/snapchat/android/notification/AndroidNotificationManager$a;Lcom/snapchat/android/notification/AndroidNotificationManager$b;Z)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {p1, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 915
    iget-object v2, p0, Lcom/snapchat/android/notification/AndroidNotificationManager;->b:Laph;

    invoke-virtual {p5}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1}, Laph;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    const-string v4, "op_code"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "clear"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "notification_type"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {p1, v3, v2, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 916
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v3, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    new-instance v4, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v4}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v4, p3}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel$7abcb88d()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iput-object v1, v3, Landroid/support/v4/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, v3, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-wide v4, v1, Landroid/app/Notification;->when:J

    if-eqz p8, :cond_2

    const/4 p4, 0x0

    :cond_2
    invoke-virtual {v3, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v3, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object v2, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x0

    new-array v2, v2, [J

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 928
    invoke-static {p1}, Lcom/snapchat/android/notification/AndroidNotificationManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 929
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const v4, 0x7f020187

    invoke-virtual {v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const/16 v4, 0x15

    if-lt v3, v4, :cond_8

    if-eqz v1, :cond_7

    const v1, 0x7f020183

    :goto_1
    invoke-static {p1, v1}, Lavp;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/snapchat/android/notification/AndroidNotificationManager$3;->a:[I

    invoke-virtual {p5}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080048

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_2
    iput v1, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mColor:I

    .line 932
    :goto_3
    if-nez p8, :cond_a

    invoke-static {}, Lakr;->bC()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    .line 933
    :goto_4
    if-eqz v1, :cond_3

    .line 934
    sget-object v1, Lcom/snapchat/android/notification/AndroidNotificationManager;->g:[J

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 938
    :cond_3
    if-nez p8, :cond_b

    invoke-static {}, Lakr;->bD()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    .line 939
    :goto_5
    if-eqz v1, :cond_4

    .line 940
    iget-object v1, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/4 v3, 0x1

    iput v3, v1, Landroid/app/Notification;->defaults:I

    .line 943
    :cond_4
    invoke-static {}, Lakr;->bE()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 944
    iget-object v1, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/16 v3, -0x100

    iput v3, v1, Landroid/app/Notification;->ledARGB:I

    iget-object v1, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/16 v3, 0x3e8

    iput v3, v1, Landroid/app/Notification;->ledOnMS:I

    iget-object v1, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/16 v3, 0x7d0

    iput v3, v1, Landroid/app/Notification;->ledOffMS:I

    iget-object v1, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->ledOnMS:I

    if-eqz v1, :cond_c

    iget-object v1, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->ledOffMS:I

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    :goto_6
    iget-object v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget-object v4, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, -0x2

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    :goto_7
    or-int/2addr v1, v4

    iput v1, v3, Landroid/app/Notification;->flags:I

    .line 948
    :cond_5
    new-instance v1, Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;-><init>()V

    .line 949
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020085

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v1, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    .line 950
    invoke-interface {v1, v2}, Landroid/support/v4/app/NotificationCompat$Extender;->extend(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 952
    sget-boolean v1, Latt;->SUPPORTS_NOTIFICATION_PRIORITY:Z

    if-eqz v1, :cond_6

    .line 953
    const/4 v1, 0x1

    iput v1, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mPriority:I

    .line 955
    :cond_6
    invoke-virtual {p5}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->getNotificationId()I

    move-result v1

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 957
    if-nez p8, :cond_e

    invoke-static {}, Lakr;->bF()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    .line 958
    :goto_8
    if-eqz v0, :cond_0

    .line 959
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x10000006

    const-string v2, "MyLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto/16 :goto_0

    .line 929
    :cond_7
    const v1, 0x7f020185

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080048

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080007

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080053

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080041

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto/16 :goto_2

    :cond_8
    if-eqz v1, :cond_9

    const v1, 0x7f020184

    :goto_9
    invoke-static {p1, v1}, Lavp;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_3

    :cond_9
    const v1, 0x7f020186

    goto :goto_9

    .line 932
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 938
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 944
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_6

    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_7

    .line 957
    :cond_e
    const/4 v0, 0x0

    goto :goto_8

    .line 929
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)Z
    .locals 2

    .prologue
    .line 798
    sget-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager$3;->a:[I

    invoke-virtual {p0}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 803
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 801
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 798
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)I
    .locals 2

    .prologue
    .line 808
    sget-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager$3;->a:[I

    invoke-virtual {p0}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 832
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 810
    :pswitch_1
    const v0, 0x7f070008

    goto :goto_0

    .line 814
    :pswitch_2
    const v0, 0x7f070009

    goto :goto_0

    .line 820
    :pswitch_3
    const v0, 0x7f07000a

    goto :goto_0

    .line 824
    :pswitch_4
    const v0, 0x7f070007

    goto :goto_0

    .line 828
    :pswitch_5
    const v0, 0x7f07000b

    goto :goto_0

    .line 808
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    const v0, 0x7f0c0193

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->h:Ljava/lang/String;

    .line 251
    :cond_0
    sget-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    const/16 v9, 0xe

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1034
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1076
    :goto_0
    return-void

    .line 1038
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/snapchat/android/util/debug/ScApplicationInfo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1040
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1041
    const-string v4, "plain/text"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1042
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1043
    const-string v4, "android.intent.extra.EMAIL"

    new-array v5, v1, [Ljava/lang/String;

    const-string v6, "shake2reportdroid@snapchat.com"

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1044
    const-string v4, "android.intent.extra.SUBJECT"

    const-string v5, "[Android] New ANR Report"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1045
    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1046
    const/high16 v0, 0x8000000

    invoke-static {p0, v2, v3, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1049
    invoke-static {p0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v4

    .line 1051
    new-instance v5, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v5}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    .line 1052
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1053
    const-string v0, "\n"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move v0, v1

    .line 1055
    :goto_1
    array-length v7, v6

    if-ge v0, v7, :cond_1

    .line 1056
    aget-object v7, v6, v0

    invoke-virtual {v5, v7}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 1055
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1060
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    .line 1063
    new-instance v6, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v6, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const-string v7, "ANR detected from Snapchat"

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const v7, 0x1080078

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const-string v7, "ANR detected from Snapchat"

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const-string v6, "Send E-mail"

    iget-object v7, v5, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v8, Landroid/support/v4/app/NotificationCompat$Action;

    invoke-direct {v8, v6, v3}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v3, v5, Landroid/support/v4/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel$7abcb88d()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1075
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v5, "android.support.useSideChannel"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    if-eqz v1, :cond_3

    new-instance v1, Landroid/support/v4/app/NotificationManagerCompat$NotifyTask;

    iget-object v2, v4, Landroid/support/v4/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v9, v0}, Landroid/support/v4/app/NotificationManagerCompat$NotifyTask;-><init>(Ljava/lang/String;ILandroid/app/Notification;)V

    invoke-virtual {v4, v1}, Landroid/support/v4/app/NotificationManagerCompat;->pushSideChannelQueue(Landroid/support/v4/app/NotificationManagerCompat$Task;)V

    sget-object v0, Landroid/support/v4/app/NotificationManagerCompat;->IMPL:Landroid/support/v4/app/NotificationManagerCompat$Impl;

    iget-object v1, v4, Landroid/support/v4/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-interface {v0, v1, v9}, Landroid/support/v4/app/NotificationManagerCompat$Impl;->cancelNotification$21184a1(Landroid/app/NotificationManager;I)V

    goto/16 :goto_0

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    sget-object v1, Landroid/support/v4/app/NotificationManagerCompat;->IMPL:Landroid/support/v4/app/NotificationManagerCompat$Impl;

    iget-object v2, v4, Landroid/support/v4/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-interface {v1, v2, v9, v0}, Landroid/support/v4/app/NotificationManagerCompat$Impl;->postNotification$62d42cd7(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 1060
    nop

    :array_0
    .array-data 8
        0x0
        0x32
    .end array-data
.end method


# virtual methods
.method public final varargs a(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 584
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/notification/AndroidNotificationManager;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 585
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 484
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v8

    const v1, 0x7f0c018d

    invoke-static {v6, v1, v0}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 487
    invoke-static {p1}, Lcom/snapchat/android/notification/AndroidNotificationManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->FAILED_CHAT_NOT_FRIENDS:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v7, v6

    invoke-direct/range {v0 .. v8}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;Lcom/snapchat/android/notification/AndroidNotificationManager$a;Lcom/snapchat/android/notification/AndroidNotificationManager$b;Z)V

    .line 490
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/snapchat/android/notification/AndroidNotificationManager$Type;ZLjava/lang/String;)V
    .locals 15
    .param p13    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 377
    iget-boolean v2, p0, Lcom/snapchat/android/notification/AndroidNotificationManager;->d:Z

    if-eqz v2, :cond_5

    .line 378
    iget-object v9, p0, Lcom/snapchat/android/notification/AndroidNotificationManager;->m:Lamu;

    sget-object v2, Lamu;->g:Ljava/util/Set;

    move-object/from16 v0, p11

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->CHAT:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-object/from16 v0, p11

    if-ne v0, v2, :cond_2

    iget-object v3, v9, Lamu;->e:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    iget-object v2, v9, Lamu;->e:Ljava/util/Map;

    move-object/from16 v0, p6

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v9, Lamu;->e:Ljava/util/Map;

    move-object/from16 v0, p6

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide/32 v10, 0x124f80

    cmp-long v2, v6, v10

    if-gez v2, :cond_1

    monitor-exit v3

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-object v2, v9, Lamu;->e:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p6

    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_2
    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->TYPING:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-object/from16 v0, p11

    if-ne v0, v2, :cond_4

    iget-object v3, v9, Lamu;->f:Ljava/util/Map;

    monitor-enter v3

    :try_start_1
    iget-object v2, v9, Lamu;->f:Ljava/util/Map;

    move-object/from16 v0, p6

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v9, Lamu;->f:Ljava/util/Map;

    move-object/from16 v0, p6

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide/32 v10, 0x124f80

    cmp-long v2, v6, v10

    if-gez v2, :cond_3

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :cond_3
    :try_start_3
    iget-object v2, v9, Lamu;->f:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    iget-object v10, v9, Lamu;->c:Ljava/util/List;

    monitor-enter v10

    :try_start_4
    new-instance v2, Lamu$a;

    iget-object v3, v9, Lamu;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v6

    move-object/from16 v3, p6

    move-object/from16 v4, p5

    move-object/from16 v5, p11

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v8}, Lamu$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;JLjava/lang/String;)V

    iget-object v3, v9, Lamu;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v10

    goto :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2

    .line 380
    :cond_5
    invoke-virtual/range {p11 .. p11}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    move/from16 v13, p12

    move-object/from16 v14, p13

    invoke-static/range {v2 .. v14}, Lcom/snapchat/android/database/table/NotificationTable;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final a(Landroid/content/Context;Z)V
    .locals 19

    .prologue
    .line 501
    const/4 v9, 0x0

    .line 502
    const/4 v8, 0x0

    .line 504
    const/4 v7, 0x0

    .line 505
    const/4 v6, 0x0

    .line 507
    const-wide/16 v4, 0x0

    .line 508
    const-wide/16 v2, 0x0

    .line 510
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->c:Lakx;

    invoke-virtual {v10}, Lakx;->f()Ljava/util/List;

    move-result-object v10

    .line 511
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v10, v9

    move v9, v8

    move v8, v7

    move/from16 v18, v6

    move-wide v6, v4

    move-wide v4, v2

    move/from16 v3, v18

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 512
    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v15

    .line 513
    if-eqz v15, :cond_0

    .line 514
    monitor-enter v15

    .line 517
    :try_start_0
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v3

    :cond_1
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 518
    invoke-interface {v3}, Lcom/snapchat/android/model/chat/ChatFeedItem;->P()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v3}, Lcom/snapchat/android/model/chat/ChatFeedItem;->Q()Z

    move-result v12

    if-nez v12, :cond_1

    .line 519
    invoke-interface {v3}, Lcom/snapchat/android/model/chat/ChatFeedItem;->U()J

    move-result-wide v12

    .line 520
    instance-of v0, v3, Lakw;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 521
    check-cast v3, Lakw;

    .line 522
    sget-object v17, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED_AND_USER_NOTIFIED_OF_FAILURE:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    move-object/from16 v0, v17

    iput-object v0, v3, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 523
    cmp-long v3, v4, v12

    if-gez v3, :cond_10

    .line 526
    :goto_2
    add-int/lit8 v10, v10, 0x1

    .line 528
    iget-boolean v3, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mIsUserInConversation:Z

    if-nez v3, :cond_2

    .line 529
    add-int/lit8 v8, v8, 0x1

    :cond_2
    move-wide v4, v12

    .line 531
    goto :goto_1

    :cond_3
    instance-of v0, v3, Lcom/snapchat/android/model/Snap;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 532
    instance-of v0, v3, Lake;

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 533
    check-cast v3, Lake;

    .line 534
    sget-object v17, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED_AND_USER_NOTIFIED_OF_FAILURE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lake;->a(Lcom/snapchat/android/model/Snap$ClientSnapStatus;)V

    .line 536
    :cond_4
    cmp-long v3, v6, v12

    if-gez v3, :cond_5

    move-wide v6, v12

    .line 539
    :cond_5
    add-int/lit8 v11, v11, 0x1

    .line 541
    iget-boolean v3, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mIsUserInConversation:Z

    if-nez v3, :cond_1

    .line 542
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 547
    :cond_6
    monitor-exit v15

    move v3, v8

    move v8, v9

    move v9, v10

    move v10, v11

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 548
    :cond_7
    if-nez v9, :cond_9

    if-nez v10, :cond_9

    .line 580
    :cond_8
    :goto_3
    return-void

    .line 555
    :cond_9
    if-lez v9, :cond_b

    if-nez v10, :cond_b

    .line 556
    invoke-static/range {p1 .. p1}, Lakp;->a(Landroid/content/Context;)Lakp;

    move-result-object v2

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const/4 v10, 0x0

    sget-object v11, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->CHAT:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v11, v9, v10

    invoke-virtual {v2, v9}, Lakp;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    .line 563
    :goto_4
    if-nez v3, :cond_a

    if-eqz v8, :cond_8

    .line 565
    :cond_a
    if-lez v3, :cond_d

    if-nez v8, :cond_d

    .line 566
    const v2, 0x7f0c018c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 577
    :goto_5
    invoke-static/range {p1 .. p1}, Lcom/snapchat/android/notification/AndroidNotificationManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->FAILED_SNAP_AND_CHAT:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v10, p2

    invoke-direct/range {v2 .. v10}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;Lcom/snapchat/android/notification/AndroidNotificationManager$a;Lcom/snapchat/android/notification/AndroidNotificationManager$b;Z)V

    goto :goto_3

    .line 557
    :cond_b
    if-nez v9, :cond_c

    if-lez v10, :cond_c

    .line 558
    invoke-static/range {p1 .. p1}, Lakp;->a(Landroid/content/Context;)Lakp;

    move-result-object v2

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const/4 v10, 0x0

    sget-object v11, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->SENT_SNAPS:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v11, v9, v10

    invoke-virtual {v2, v9}, Lakp;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    goto :goto_4

    .line 560
    :cond_c
    invoke-static/range {p1 .. p1}, Lakp;->a(Landroid/content/Context;)Lakp;

    move-result-object v2

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const/4 v10, 0x0

    sget-object v11, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->CHAT:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->SENT_SNAPS:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v11, v9, v10

    invoke-virtual {v2, v9}, Lakp;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    goto :goto_4

    .line 568
    :cond_d
    if-nez v3, :cond_e

    if-lez v8, :cond_e

    .line 569
    const v2, 0x7f0c018e

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 570
    goto :goto_5

    .line 572
    :cond_e
    const v2, 0x7f0c018f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 573
    cmp-long v2, v6, v4

    if-lez v2, :cond_f

    const v2, 0x7f0c018e

    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v5, v3

    goto :goto_5

    :cond_f
    const v2, 0x7f0c018c

    goto :goto_6

    :cond_10
    move-wide v12, v4

    goto/16 :goto_2
.end method

.method public final b(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V
    .locals 18
    .annotation build Lcbr;
    .end annotation

    .prologue
    .line 451
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->d:Z

    if-eqz v4, :cond_0

    .line 452
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v4

    new-instance v5, Lbdb;

    invoke-direct {v5}, Lbdb;-><init>()V

    invoke-virtual {v4, v5}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 472
    :goto_0
    return-void

    .line 456
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 457
    sget-object v4, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->SNAP:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_1

    sget-object v4, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->CHAT:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_7

    :cond_1
    const/4 v4, 0x1

    move v5, v4

    .line 458
    :goto_1
    if-eqz v5, :cond_8

    sget-object v4, Lcom/snapchat/android/notification/AndroidNotificationManager;->e:[Ljava/lang/String;

    :goto_2
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/snapchat/android/database/table/NotificationTable;->a(Landroid/content/Context;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 461
    if-eqz v5, :cond_e

    .line 462
    :try_start_0
    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v12, 0x0

    if-eqz v14, :cond_b

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_b

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_b

    move-object v7, v4

    move-object v4, v5

    move v5, v9

    :goto_3
    sget-object v6, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->SENDER:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v6}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnNumber()I

    move-result v6

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->SENDER_USERNAME:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v8}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnNumber()I

    move-result v8

    invoke-interface {v14, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->CHAT_SEQ_NUM:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v9}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnNumber()I

    move-result v9

    invoke-interface {v14, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    new-instance v13, Lakt;

    invoke-direct {v13, v8, v6}, Lakt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->SNAP:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-object/from16 v0, p2

    if-ne v0, v6, :cond_9

    const/4 v6, 0x1

    :goto_4
    if-eqz v6, :cond_11

    const/4 v5, 0x1

    sget-object v4, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->ID:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnNumber()I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v9, v5

    move-object v5, v4

    :goto_5
    invoke-virtual {v15, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/snapchat/android/notification/AndroidNotificationManager$a;

    if-nez v4, :cond_2

    new-instance v4, Lcom/snapchat/android/notification/AndroidNotificationManager$a;

    invoke-virtual {v13}, Lakt;->a()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/snapchat/android/notification/AndroidNotificationManager$a;-><init>(Ljava/lang/String;)V

    :cond_2
    iget v6, v4, Lcom/snapchat/android/notification/AndroidNotificationManager$a;->b:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/snapchat/android/notification/AndroidNotificationManager$a;->b:I

    iget-wide v0, v4, Lcom/snapchat/android/notification/AndroidNotificationManager$a;->c:J

    move-wide/from16 v16, v0

    cmp-long v6, v16, v10

    if-gez v6, :cond_3

    iput-wide v10, v4, Lcom/snapchat/android/notification/AndroidNotificationManager$a;->c:J

    :cond_3
    invoke-virtual {v15, v13, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v14}, Landroid/database/Cursor;->isLast()Z

    move-result v4

    if-eqz v4, :cond_10

    sget-object v4, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->NINJA_MODE:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->getColumnNumber()I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_a

    const/4 v4, 0x1

    :goto_6
    move v12, v4

    :goto_7
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {v15}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    invoke-static/range {p1 .. p1}, Lcom/snapchat/android/notification/AndroidNotificationManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v15}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13}, Lakt;->b()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-virtual {v13}, Lakt;->a()Ljava/lang/String;

    move-result-object v4

    :cond_4
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v8, v10

    const/4 v4, 0x0

    const v10, 0x7f0c0192

    invoke-static {v4, v10, v8}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v15}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v4, v0, :cond_5

    if-nez v9, :cond_d

    invoke-virtual {v15, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/snapchat/android/notification/AndroidNotificationManager$a;

    move-object v10, v4

    :cond_5
    :goto_8
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p2

    invoke-direct/range {v4 .. v12}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;Lcom/snapchat/android/notification/AndroidNotificationManager$a;Lcom/snapchat/android/notification/AndroidNotificationManager$b;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    :goto_9
    if-eqz v14, :cond_6

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 471
    :cond_6
    invoke-static/range {p2 .. p2}, Lnz;->a(Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V

    goto/16 :goto_0

    .line 457
    :cond_7
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_1

    .line 458
    :cond_8
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    goto/16 :goto_2

    .line 462
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_a
    const/4 v4, 0x0

    goto :goto_6

    :cond_b
    :try_start_1
    invoke-static/range {p1 .. p2}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_9

    .line 469
    :catchall_0
    move-exception v4

    if-eqz v14, :cond_c

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v4

    .line 462
    :pswitch_0
    :try_start_2
    invoke-static/range {p1 .. p2}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V

    goto :goto_9

    :cond_d
    new-instance v11, Lcom/snapchat/android/notification/AndroidNotificationManager$b;

    invoke-virtual {v13}, Lakt;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v11, v4, v5}, Lcom/snapchat/android/notification/AndroidNotificationManager$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 463
    :cond_e
    sget-object v4, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->CASH:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_f

    .line 464
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v14}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/database/Cursor;)V

    goto :goto_9

    .line 466
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v6, v14, v2}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/database/Cursor;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_9

    :cond_10
    move-object v13, v7

    goto/16 :goto_7

    :cond_11
    move v9, v5

    move-object v5, v4

    goto/16 :goto_5

    :cond_12
    move-object v7, v13

    move-object v4, v5

    move v5, v9

    goto/16 :goto_3

    .line 462
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 588
    invoke-static {p1}, Lcom/snapchat/android/notification/AndroidNotificationManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->FAILED_CASH:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p2

    move-object v7, v6

    invoke-direct/range {v0 .. v8}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;Lcom/snapchat/android/notification/AndroidNotificationManager$a;Lcom/snapchat/android/notification/AndroidNotificationManager$b;Z)V

    .line 590
    return-void
.end method
